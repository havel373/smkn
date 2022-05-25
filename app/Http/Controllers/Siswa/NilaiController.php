<?php

namespace App\Http\Controllers\Siswa;

use App\Http\Controllers\Controller;
use App\Models\Pengumpulan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NilaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $keywords = $request->keywords;
            $collection = Pengumpulan::
            where('nisn',Auth::user()->siswa->nisn)
            ->where('nisn','like','%'.$keywords.'%')
            ->paginate(10);
            return view('pages.siswa.nilai.list', compact('collection'));
        }
        return view('pages.siswa.nilai.main');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pengumpulan  $pengumpulan
     * @return \Illuminate\Http\Response
     */
    public function show(Pengumpulan $pengumpulan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Pengumpulan  $pengumpulan
     * @return \Illuminate\Http\Response
     */
    public function edit(Pengumpulan $pengumpulan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Pengumpulan  $pengumpulan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pengumpulan $pengumpulan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pengumpulan  $pengumpulan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pengumpulan $pengumpulan)
    {
        //
    }
}
