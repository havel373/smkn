<?php

namespace Database\Seeders;

use App\Models\Guru;
use Illuminate\Database\Seeder;

class GuruSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $guru = array(
            [
                'nip' => '98765433',
                'nama' => 'Deden Siagian',
                'alamat' => 'Jalan serta Yesus',
                'jenis_kelamin' => 'l',
                'email' => 'Deden@example.co.id',
                'agama' => 'HINDU',
                'tgl_lahir' =>  '1989-12-31',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nip' => '98765434',
                'nama' => 'Yuli Chan',
                'alamat' => 'Jalan setapak',
                'jenis_kelamin' => 'p',
                'email' => 'Yuli@example.co.id',
                'agama' => 'ISLAM',
                'tgl_lahir' =>  '1990-12-31',
                'created_at' => now(),
                'updated_at' => now()
            ]
        );
        foreach($guru AS $e){
            Guru::create([
                'nip' => $e['nip'],
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
