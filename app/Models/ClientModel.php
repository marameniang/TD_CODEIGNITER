<?php namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;
 
class ClientModel extends Model
{
    protected $table = 'Client';
	
    protected $allowedFields = ['matricule', 'cni', 'nom', 'prenom', 'sexe', 'datenaiss', 
    'tel', 'adresse', 'email', 'raison_sociale', 'salaire', 'nom_employeur', 'adr_employeur'];
}
