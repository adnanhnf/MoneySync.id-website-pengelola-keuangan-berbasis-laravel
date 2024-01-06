<?php

namespace App\Http\Controllers\account;

use App\Credit;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LaporanCreditController extends Controller
{
    /**
     * LaporanCreditController constructor.
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        return view('account.laporan_credit.index');
    }

    public function view_pdf(Request $request)
    {
        // Validasi tanggal_awal dan tanggal_akhir (sesuaikan dengan kebutuhan)
        $request->validate([
            'tanggal_awal'  => 'required',
            'tanggal_akhir' => 'required',
        ]);

        $tanggal_awal  = $request->input('tanggal_awal');
        $tanggal_akhir = $request->input('tanggal_akhir');

        // Ambil data kredit berdasarkan rentang tanggal
        $credit = Credit::select('credit.id', 'credit.category_id', 'credit.user_id', 'credit.nominal', 'credit.credit_date', 'credit.description', 'categories_credit.id as id_category', 'categories_credit.name')
            ->join('categories_credit', 'credit.category_id', '=', 'categories_credit.id', 'LEFT')
            ->whereDate('credit.credit_date', '>=', $tanggal_awal)
            ->whereDate('credit.credit_date', '<=', $tanggal_akhir)
            ->get(); // Menggunakan get() untuk mendapatkan semua data

        // Inisialisasi mPDF
        $mpdf = new \Mpdf\Mpdf();

        // Buat konten HTML dari data laporan
        $htmlContent = '<h1>Laporan Kredit</h1>';
        $htmlContent .= '<p>Tanggal Awal: ' . $tanggal_awal . '</p>';
        $htmlContent .= '<p>Tanggal Akhir: ' . $tanggal_akhir . '</p>';

        // Tambahkan data kredit ke dalam tabel HTML
        $htmlContent .= '<table style="border-collapse: collapse; width: 100%; text-align: center; border: 1px solid #dddddd;">
        <thead style="background-color: #f2f2f2;">
            <tr>
                <th style="border: 1px solid #dddddd; padding: 12px; font-weight: bold;">Kategori</th>
                <th style="border: 1px solid #dddddd; padding: 12px; font-weight: bold;">Nominal</th>
                <th style="border: 1px solid #dddddd; padding: 12px; font-weight: bold;">Keterangan</th>
                <th style="border: 1px solid #dddddd; padding: 12px; font-weight: bold;">Tanggal</th>
            </tr>
        </thead>';

        foreach ($credit as $row) {
            $htmlContent .= '<tr>
                        <td style="border: 1px solid #dddddd; padding: 8px;">' . $row->name . '</td>
                        <td style="border: 1px solid #dddddd; padding: 8px;">' . $row->nominal . '</td>
                        <td style="border: 1px solid #dddddd; padding: 8px;">' . $row->description . '</td>
                        <td style="border: 1px solid #dddddd; padding: 8px;">' . $row->credit_date . '</td>
                    </tr>';
        }

        $htmlContent .= '</table>';

        // Tambahkan konten HTML ke mPDF
        $mpdf->WriteHTML($htmlContent);

        // Simpan PDF ke dalam variabel
        $output = $mpdf->Output('', 'S');

        // Kembalikan PDF sebagai respons dengan header yang sesuai
        return response()->make($output, 200, [
            'Content-Type'        => 'application/pdf',
            'Content-Disposition' => 'inline; filename="laporan_kredit.pdf"',
        ]);
    }


    /**
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Illuminate\Validation\ValidationException
     */
    public function check(Request $request)
    {
        //set validasi required
        $this->validate(
            $request,
            [
                'tanggal_awal'     => 'required',
                'tanggal_akhir'    => 'required',
            ],
            //set message validation
            [
                'tanggal_awal.required'  => 'Silahkan Pilih Tanggal Awal!',
                'tanggal_akhir.required' => 'Silahkan Pilih Tanggal Akhir!',
            ]
        );

        $tanggal_awal  = $request->input('tanggal_awal');
        $tanggal_akhir = $request->input('tanggal_akhir');

        $credit = Credit::select('credit.id', 'credit.category_id', 'credit.user_id', 'credit.nominal', 'credit.credit_date', 'credit.description', 'categories_credit.id as id_category', 'categories_credit.name')
            ->join('categories_credit', 'credit.category_id', '=', 'categories_credit.id', 'LEFT')
            ->whereDate('credit.credit_date', '>=', $tanggal_awal)
            ->whereDate('credit.credit_date', '<=', $tanggal_akhir)
            ->paginate(10)
            ->appends(request()->except('page'));

        return view('account.laporan_credit.index', compact('credit', 'tanggal_awal', 'tanggal_akhir'));
    }
}
