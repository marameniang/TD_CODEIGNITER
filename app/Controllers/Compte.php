<?php namespace App\Controllers;

use App\Models\CompteModel;
use App\Models\ClientModel;
use App\Models\EntrepriseModel;

use CodeIgniter\Controller;

 
class Compte extends Controller
{
 
    // public function index()
    // {    
    //     $model = new CompteModel();
 
    //     $data['users'] = $model->orderBy('id', 'DESC')->findAll();
        
    //     return view('users', $data);
    // }    
 
    public function create()
    {    

        return view('createCompte');
    }
 
    public function store()
    {  
 
        helper(['form', 'url']);
        extract($_POST);
        // var_dump($_POST);
        // die();
        
        $model = new ClientModel();
        $model2 = new CompteModel();
        $model3 = new EntrepriseModel();

        
        if(isset($_POST['submit'])){
            
            if ($choix_client == "nouveau") {
               
                if ($choix_type_client == "physique") {
                    
                    if ($choix_compte == "simple") {
                        $mat = $this->codeAleatoire(8);
                        $client = [
                            'matricule' => $mat,
                            'cni' => $this->request->getVar('cni'),
                            'nom' => $this->request->getVar('nom'),
                            'prenom' => $this->request->getVar('prenom'),
                            'sexe' => $this->request->getVar('sexe'),
                            'datenaiss' => $this->request->getVar('datenaiss'),
                            'tel' => $this->request->getVar('tel'),
                            'adresse' => $this->request->getVar('adr'),
                            'email'  => $this->request->getVar('email'),
            
                        ];

                        $save = $model->insert($client);
                        // var_dump($save);
                        // die();


                        $rib = $this->cleRip(9);
                        $num = $this->cleRip(8);
                        $compte =[
                            'idClient' => $save,
                            'numero'  =>$num,
                            'rib'  => $rib,
                            'solde'  => 5000,
                            'dateOuve'  => date('Y-m-d'),
                            'fraisOuv'  => 25000,
                            'remuneration'  => 10000,
                            'typeCompte_id'  => 1,

                        ] ;
                        
                        $save2 = $model2->insert($compte);
                        // var_dump($save2);
                        // die();

                    }
                    else if ($choix_compte == 'courant') {
                        $mat = $this->codeAleatoire(8);
                        $client = [
                            'matricule' => $mat,
                            'cni' => $this->request->getVar('cni'),
                            'nom' => $this->request->getVar('nom'),
                            'prenom' => $this->request->getVar('prenom'),
                            'sexe' => $this->request->getVar('sexe'),
                            'datenaiss' => $this->request->getVar('datenaiss'),
                            'tel' => $this->request->getVar('tel'),
                            'adresse' => $this->request->getVar('adr'),
                            'email'  => $this->request->getVar('email'),
                            'raison_sociale' => $this->request->getVar('raison_sociale'),
                            'salaire' => $this->request->getVar('salaire'),
                            'nom_employeur' => $this->request->getVar('nom_employeur'),
                            'adr_employeur' => $this->request->getVar('adr_employeur'),
                        ];

                        $save = $model->insert($client);

                        $rib = $this->cleRip(9);
                        $num = $this->cleRip(8);
                        $compte =[
                            'idClient' => $save,
                            'numero'  =>$num,
                            'rib'  => $rib,
                            'solde'  => 5000,
                            'dateOuve'  => date('Y-m-d'),
                            'agios'  => 10000,
                            'typeCompte_id'  => 2,               

                        ] ;
                        
                        $save2 = $model2->insert($compte);
                    }
                    else{
                        $mat = $this->codeAleatoire(8);
                        $client = [
                            'matricule' => $mat,
                            'cni' => $this->request->getVar('cni'),
                            'nom' => $this->request->getVar('nom'),
                            'prenom' => $this->request->getVar('prenom'),
                            'sexe' => $this->request->getVar('sexe'),
                            'datenaiss' => $this->request->getVar('datenaiss'),
                            'tel' => $this->request->getVar('tel'),
                            'adresse' => $this->request->getVar('adr'),
                            'email'  => $this->request->getVar('email'),
            
                        ];

                        $save = $model->insert($client);

                        $rib = $this->cleRip(9);
                        $num = $this->cleRip(8);
                        $compte =[
                            'idClient' => $save,
                            'numero'  =>$num,
                            'rib'  => $rib,
                            'solde'  => 5000,
                            'dateOuve'  => date('Y-m-d'),
                            'fraisOuv'  => 25000,
                            'remuneration'  => 10000,
                            'date_debut' => $this->request->getVar('date_debut'),
                            'date_fin' => $this->request->getVar('date_fin'),
                            'typeCompte_id'  => 3,

                        ] ;
                        
                        $save2 = $model2->insert($compte);
                    }
                }
                else{
                    $entreprise = [
                    'nom_entreprise' => $this->request->getVar('nom_entreprise'),
                    'tel_entreprise' => $this->request->getVar('tel_entreprise'),
                    'email_entreprise' => $this->request->getVar('email_entreprise'),
                    'budget_entreprise' => $this->request->getVar('budget_entreprise'),
                    'adr_entreprise' => $this->request->getVar('adr_entreprise'),
                    ];
                    $save = $model3->insert($entreprise);


                    if ($choix_compte == "simple") {
                        $rib = $this->cleRip(9);
                        $num = $this->cleRip(8);
                        $compte =[
                            'idClient' => $save,
                            'numero'  =>$num,
                            'rib'  => $rib,
                            'solde'  => 5000,
                            'dateOuve'  => date('Y-m-d'),
                            'fraisOuv'  => 25000,
                            'remuneration'  => 10000,
                            'typeCompte_id'  => 1,

                        ] ;
                        
                        $save2 = $model2->insert($compte);
                    }

                    else{
                        $rib = $this->cleRip(9);
                        $num = $this->cleRip(8);
                        $compte =[
                            'idClient' => $save,
                            'numero'  =>$num,
                            'rib'  => $rib,
                            'solde'  => 5000,
                            'dateOuve'  => date('Y-m-d'),
                            'fraisOuv'  => 25000,
                            'remuneration'  => 10000,
                            'date_debut' => $this->request->getVar('date_debut'),
                            'date_fin' => $this->request->getVar('date_fin'),
                            'typeCompte_id'  => 3,
            
                        ];

                        $save2 = $model2->insert($compte);
                    }
                    
                }
            }
        
    }
    
        return redirect()->to(base_url('/Home'));
    }
 
    // public function edit($id = null)
    // {
      
    //  $model = new CompteModel();
 
    //  $data['user'] = $model->where('id', $id)->first();
 
    //  return view('public/index.php/edit-user', $data);
    // }
 
    // public function update()
    // {  
 
    //     helper(['form', 'url']);
         
    //     $model = new CompteModel();
 
    //     $id = $this->request->getVar('id');
 
    //     $data = [
 
    //         'name' => $this->request->getVar('name'),
    //         'email'  => $this->request->getVar('email'),
    //         ];
 
    //     $save = $model->update($id,$data);
 
    //     return redirect()->to( base_url('public/index.php/users') );
    // }
 
    // public function delete($id = null)
    // {
 
    //  $model = new CompteModel();
 
    //  $data['user'] = $model->where('id', $id)->delete();
      
    //  return redirect()->to( base_url('public/index.php/users') );
    // }
    public function codeAleatoire($car)
    {
       $string = "";
       $chaine = "2643789ABDCEFGHJKMNPRTUVW";
       srand((double)microtime()*1000000);
       for($i=0; $i<$car; $i++)
       {
           $string .= $chaine[rand()%strlen($chaine)];
       }
       return $string;
    }

    public function cleRip($rip)
    {
        $string = "";
        $chaine = "012643789";
        srand((double)microtime()*1000000);
        for($i=0; $i<$rip; $i++)
        {
            $string .= $chaine[rand()%strlen($chaine)];
        }
        return $string;
    }
}

