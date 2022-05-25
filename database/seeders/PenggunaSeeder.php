<?php

namespace Database\Seeders;

use App\Models\Pengguna;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class PenggunaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $operator = array(
            [
                'role' => 'o',
                'username' => 'operator123',
                'password' => Hash::make('password'),
                'id_operator' => 8765433,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'role' => 'o',
                'username' => 'operator12345',
                'password' => Hash::make('password'),
                'id_operator' => 8765434,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );
        $guru = array(
            [
                'role' => 'g',
                'username' => 'guru123',
                'password' => Hash::make('password'),
                'nip' =>  98765433,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'role' => 'g',
                'username' => 'guru12356',
                'password' => Hash::make('password'),
                'nip' =>  98765434,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );
        $siswa = array(
            [
                'role' => 's',
                'username' => 'siswa123',
                'password' => Hash::make('password'),
                'nisn' =>  1234565,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'role' => 's',
                'username' => 'siswa12345',
                'password' => Hash::make('password'),
                'nisn' =>  1234566,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );
        foreach($operator AS $e){
            Pengguna::create([
                'role' => $e['role'],
                'username' => $e['username'],
                'password' => $e['password'],
                'id_operator' =>$e['id_operator'],
                'created_at' =>$e['created_at'],
                'updated_at' =>$e['updated_at'],
            ]);
        }
        foreach($guru AS $e){
            Pengguna::create([
                'role' => $e['role'],
                'username' => $e['username'],
                'password' => $e['password'],
                'nip' =>$e['nip'],
                'created_at' =>$e['created_at'],
                'updated_at' =>$e['updated_at'],
            ]);
        }
        foreach($siswa AS $e){
            Pengguna::create([
                'role' => $e['role'],
                'username' => $e['username'],
                'password' => $e['password'],
                'nisn' =>$e['nisn'],
                'created_at' =>$e['created_at'],
                'updated_at' =>$e['updated_at'],
            ]);
        }
    }
}
