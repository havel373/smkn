<?php

namespace Database\Seeders;

use App\Models\Operator;
use Illuminate\Database\Seeder;

class OperatorSeeder extends Seeder
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
                'id_operator' => '8765433',
                'nama' => 'Operator manurung',
                'email' => 'operatorm@example.co.id',
                'jenis_kelamin' => 'l',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id_operator' => '8765434',
                'nama' => 'Operator sitinjak',
                'email' => 'operators@example.co.id',
                'jenis_kelamin' => 'p',
                'created_at' => now(),
                'updated_at' => now()
            ]
        );
        foreach($operator AS $e){
            Operator::create([
                'id_operator' => $e['id_operator'],
                'nama' => $e['nama'],
                'email' =>$e['email'],
                'jenis_kelamin' =>$e['jenis_kelamin'],
                'created_at' =>$e['created_at'],
                'updated_at' =>$e['updated_at'],
            ]);
        }
    }
}
