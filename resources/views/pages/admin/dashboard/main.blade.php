<x-app-layout title="Dashboard">
    @if(Auth::user()->role == 'o')      
    <main id="main" class="main">
        <div class=" pagetitle text-center mt-xl-5 ">
          <h1 style="font-size: 250%; font-family:sans-serif;color:#012970;">Welcome to E-Learning SMKN 3 Balige</h1>
        </div>
    </main>
    @elseif(Auth::user()->role == 's')
    <main id="main" class="main">
        @php
            $kelas_id = \App\Models\Pengguna::join('siswa','pengguna.nisn','=','siswa.nisn')->select('siswa.kelas_id')->where('pengguna.nisn',Auth::user()->nisn)->first();
            $mapel = \App\Models\MataPelajaran::join('siswa','mata_pelajaran.kelas_id','=','siswa.kelas_id')
                    ->join('pengguna','siswa.nisn','=','pengguna.nisn')->where('mata_pelajaran.kelas_id',$kelas_id->kelas_id)->get();
        @endphp
        <section class="section dashboard">
          <div class="row">
            <div class="col-lg-12">
              <div class="row">
                <div class="col-xxl-4 col-xl-12">
    
                  <div class="card info-card customers-card " >
                    <div class="card-body">
                      <h5 class="card-title">X Tataboga 1</h5>
                      <div class="list-group ">
                        @foreach($mapel as $item)
                            <a href="#" class="list-group-item list-group-item-action list-group-item-dark">{{$item->nama_mapel}}</a>
                        @endforeach 
                        </div>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
    
      </main>
    @else 
    <main id="main" class="main">
        <div class=" pagetitle text-center mt-xl-5 ">
          <h1 style="font-size: 250%; font-family:sans-serif;color:#012970;">Welcome to E-Learning SMKN 3 Balige</h1>
        </div>
    </main>
    @endif
</x-app-layout>