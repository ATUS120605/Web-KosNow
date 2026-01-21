<?php

namespace App\Interfaces;

interface TransactionRepositoryInterface
{
    public function getTransactionDataFromSession();

    public function saveTransactionDataToSession($data);

    public function saveTransactionData($data);

    public function getTransactionByCodeEmailPhone($code, $email, $phone);

    public function getTransactionByCode($code);

    public function updateTransactionStatus($id, $status);
}