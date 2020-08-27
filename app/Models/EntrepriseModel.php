<?php namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;

class EntrepriseModel extends Model
{
    protected $table = 'Entreprise';
 
    protected $allowedFields = ['nom_entreprise', 'tel_entreprise', 'email_entreprise', 'budget_entreprise', 'adr_entreprise', 'login', 
    'password'];
}