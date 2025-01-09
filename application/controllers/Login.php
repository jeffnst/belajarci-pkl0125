<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->load->view('view_login');
	}

	public function proses_login()
	{
		$email = $this->input->post('email');
		$password = $this->input->post('password');


		$el = array();
		$err = array();
		if ($email == '') {
			array_push($err, "email wajib diisi");
			array_push($el, "email");
		}
		if ($password == '') {
			array_push($err, "password wajib diisi");
			array_push($el, "password");
		}

		if (count($el) > 0) {
			$ret = array(
				'element' => $el,
				'error' => $err,
				'status' => false,
				'message' => 'Login Gagal'
			);
		} else {
			if ($email == 'admin' && $password == '12345') {
				$ret = array(
					'email' => $email,
					'password' => $password,
					'status' => true,
					'message' => 'Login Berhasil'
				);
			} else {
				$ret = array(
					'element' => '',
					'error' => '',
					'status' => false,
					'message' => 'Login Gagal'
				);
			}
		}


		echo json_encode($ret);
	}
}

/* End of file: Login.php */
