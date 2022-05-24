<?php

class Voucher_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('encryption');
    }

    public function ordersCount($vendor_id)
    {
        $this->db->where('valid_from_date', $vendor_id);
        return $this->db->count_all_results('discount_codes');
    }

    public function orders($limit, $page, $vendor_id)
    {
        $this->db->order_by('id', 'DESC');
        $this->db->select('discount_codes.*');
        $result = $this->db->get('discount_codes', $limit, $page);
        $result = $result->result_array();
        if(!count($result)) return $result;
        
        foreach($result as $k => $v) {
            $result[$k] = array_map(function($v) {
                $d = $this->encryption->decrypt($v);
                return $d !== false ? $d : $v;
            }, $v);
        }

        return $result;
    }


}
