<?php namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class TypeCompteModel extends Model
{
    protected $table = 'TypeCompte';
 
    protected $allowedFields = ['libelle'];
}
