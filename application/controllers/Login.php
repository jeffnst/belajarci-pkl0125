<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('User_model');
	}

	public function index()
	{
		$this->load->view('view_login');
	}

	public function proses_login()
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$this->form_validation->set_rules('username', 'nama pengguna', 'trim|required', array('required' => '%s harus diisi'));
		$this->form_validation->set_rules('password', 'kata sandi', 'trim|required', array('required' => '%s harus diisi'));

		if ($this->form_validation->run() == FALSE) {
			$ret['status'] = false;
			foreach ($_POST as $key => $value) {
				$ret['error'][$key] = form_error($key);
			}
		} else {
			$q = $this->User_model->login($username, $password);
			if ($q->num_rows() > 0) {

				$sess = array(
					'is_login' => TRUE,
					'username' => $q->row()->username
				);

				$this->session->set_userdata($sess);

				$ret = array(
					'username' => $username,
					'password' => $password,
					'error' => '',
					'status' => true,
					'message' => 'Login Berhasil'
				);
			} else {
				$ret = array(
					'element' => '',
					'error' => '',
					'status' => false,
					'message' => 'Username atau Password Salah'
				);
			}
		}


		/* $el = array();
		$err = array();
		if ($username == '') {
			array_push($err, "username wajib diisi");
			array_push($el, "username");
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
			$q = $this->User_model->login($username, $password);
			if ($q->num_rows() > 0) {

				$sess = array(
					'is_login' => TRUE,
					'username' => $q->row()->username
				);

				$this->session->set_userdata($sess);

				$ret = array(
					'username' => $username,
					'password' => $password,
					'status' => true,
					'message' => 'Login Berhasil'
				);
			} else {
				$ret = array(
					'element' => '',
					'error' => '',
					'status' => false,
					'message' => 'Username atau Password Salah'
				);
			}
		} */


		echo json_encode($ret);
	}
}

/* End of file: Login.php */
