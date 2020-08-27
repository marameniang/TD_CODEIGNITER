<?php namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;
 

class CompteModel extends Model
{
    
    protected $table = 'Compte';
 
    protected $allowedFields = ['entreprise_id', 'numero', 'rib', 'solde', 'dateOuve', 'fraisOuv', 
    'remuneration', 'date_debut', 'date_fin', 'agios', 'typeCompte_id', 'id_Client'];

   
	
}