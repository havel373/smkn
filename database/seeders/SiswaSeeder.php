<?php

namespace Database\Seeders;

use App\Models\Siswa;
use Illuminate\Database\Seeder;

class SiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $siswa = array(
            [
                'nisn' => '1234565',
                'nama' => 'Donny Silaen',
                'alamat' => 'Jalan jalan',
                'jenis_kelamin' => 'l',
                'email' => 'Donny@example.co.id',
                'agama' => 'KONGHUCU',
                'tgl_lahir' =>  '2004-12-31',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nisn' => '1234566',
                'nama' => 'Ongki Sijabat',
                'alamat' => 'Jalanan',
                'jenis_kelamin' => 'p',
                'email' => 'ongki@example.co.id',
                'agama' => 'HINDU',
                'tgl_lahir' =>  '2002-12-31',
                'created_at' => now(),
                'updated_at' => now()
            ]
        );
        foreach($siswa AS $e){
            Siswa::create([
                'nisn' => $e['nisn'],
                'nama' => $e['nama'],
                'alamat' => $e['alamat'],
                'jenis_kelamin' =>$e['jenis_kelamin'],
                'email' =>$e['email'],
                'agama' =>$e['agama'],
                'tgl_lahir' => $e['tgl_lahir'],
                'created_at' =>$e['created_at'],
                'updated_at' =>$e['updated_at'],
            ]);
        }
    }
}
