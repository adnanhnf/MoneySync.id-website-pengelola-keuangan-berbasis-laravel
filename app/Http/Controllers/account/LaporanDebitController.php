<?php

namespace App\Http\Controllers\account;

use App\Debit;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LaporanDebitController extends Controller
{
    /**
     * LaporanDebitController constructor.
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
        return view('account.laporan_debit.index');
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

        // Ambil data debit berdasarkan rentang tanggal
        $debit = Debit::select('debit.id', 'debit.category_id', 'debit.user_id', 'debit.nominal', 'debit.debit_date', 'debit.description', 'categories_debit.id as id_category', 'categories_debit.name')
            ->join('categories_debit', 'debit.category_id', '=', 'categories_debit.id', 'LEFT')
            ->whereDate('debit.debit_date', '>=', $tanggal_awal)
            ->whereDate('debit.debit_date', '<=', $tanggal_akhir)
            ->get(); // Menggunakan get() untuk mendapatkan semua data

        // Inisialisasi mPDF
        $mpdf = new \Mpdf\Mpdf();

        // Buat konten HTML dari data laporan
        $htmlContent = '<h1>Laporan Debit</h1>';
        $htmlContent .= '<p>Tanggal Awal: ' . $tanggal_awal . '</p>';
        $htmlContent .= '<p>Tanggal Akhir: ' . $tanggal_akhir . '</p>';

        // Tambahkan data debit ke dalam tabel HTML
        $htmlContent .= '<table style="border-collapse: collapse; width: 100%; text-align: center; border: 1px solid #dddddd;">
        <thead style="background-color: #f2f2f2;">
            <tr>
                <th style="border: 1px solid #dddddd; padding: 12px; font-weight: bold;">Kategori</th>
                <th style="border: 1px solid #dddddd; padding: 12px; font-weight: bold;">Nominal</th>
                <th style="border: 1px solid #dddddd; padding: 12px; font-weight: bold;">Keterangan</th>
                <th style="border: 1px solid #dddddd; padding: 12px; font-weight: bold;">Tanggal</th>
            </tr>
        </thead>';

        $totalNominal = 0; // Inisialisasi total nominal

        foreach ($debit as $row) {
            $htmlContent .= '<tr>
                        <td style="border: 1px solid #dddddd; padding: 8px;">' . $row->name . '</td>
                        <td style="border: 1px solid #dddddd; padding: 8px;">' . $row->nominal . '</td>
                        <td style="border: 1px solid #dddddd; padding: 8px;">' . $row->description . '</td>
                        <td style="border: 1px solid #dddddd; padding: 8px;">' . $row->debit_date . '</td>
                    </tr>';

            $totalNominal += $row->nominal; // Tambahkan nominal ke total
        }

        $htmlContent .= '<tr>
                    <td colspan="3" style="border: 1px solid #dddddd; padding: 8px; font-weight: bold;">Total Nominal</td>
                    <td style="border: 1px solid #dddddd; padding: 8px; font-weight: bold;">' . $totalNominal . '</td>
                </tr>';

        $htmlContent .= '</table>';

        // Tambahkan konten HTML ke mPDF
        $mpdf->WriteHTML($htmlContent);

        // Simpan PDF ke dalam variabel
        $output = $mpdf->Output('', 'S');

        // Kembalikan PDF sebagai respons dengan header yang sesuai
        return response()->make($output, 200, [
            'Content-Type'        => 'application/pdf',
            'Content-Disposition' => 'inline; filename="laporan_debit.pdf"',
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

        $debit = Debit::select('debit.id', 'debit.category_id', 'debit.user_id', 'debit.nominal', 'debit.debit_date', 'debit.description', 'categories_debit.id as id_category', 'categories_debit.name')
            ->join('categories_debit', 'debit.category_id', '=', 'categories_debit.id', 'LEFT')
            ->whereDate('debit.debit_date', '>=', $tanggal_awal)
            ->whereDate('debit.debit_date', '<=', $tanggal_akhir)
            ->paginate(10)
            ->appends(request()->except('page'));

        return view('account.laporan_debit.index', compact('debit', 'tanggal_awal', 'tanggal_akhir'));
    }
}
