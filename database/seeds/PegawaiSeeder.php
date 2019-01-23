<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PegawaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	// insert data ke table pegawai
        DB::table('pegawai')->insert([
        	'pegawai_nama' => 'Salamun',
        	'pegawai_jabatan' => 'Koordinator',
        	'pegawai_umur' => 43,
        	'pegawai_alamat' => 'GDC Gardenia Depok'
        ]);

        DB::table('pegawai')->insert([
            'pegawai_nama' => 'Kuswanto',
            'pegawai_jabatan' => 'Staff IT',
            'pegawai_umur' => 42,
            'pegawai_alamat' => 'Parung Bogor'
        ]);

        DB::table('pegawai')->insert([
            'pegawai_nama' => 'Joni',
            'pegawai_jabatan' => 'Web Designer',
            'pegawai_umur' => 25,
            'pegawai_alamat' => 'Jl. Panglateh'
        ]);

    	$faker = Faker::create('id_ID');

    	for($i = 1; $i <= 50; $i++){

    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('pegawai')->insert([
    			'pegawai_nama' => $faker->name,
    			'pegawai_jabatan' => $faker->jobTitle,
    			'pegawai_umur' => $faker->numberBetween(25,55),
    			'pegawai_alamat' => $faker->address
    		]);

    	}
    }

}
