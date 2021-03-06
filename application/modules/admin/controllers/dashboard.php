<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends Admin_Controller {

	public function __construct() {
	    parent::__construct();
	    
	    // Set class name
	    $this->_class_name = $this->controller;
	    
	    // Load user model
	    $this->load->model('Users');

	    // Load participant model
	    $this->load->model('participant/Participants');
	    
	    // Load Gallery model
	    $this->load->model('participant/Gallery');

	}
	public function index() {
            
            //print_r($this->Users->getLoginStats());
            //exit;
            
            // Check if the request via AJAX
            if ($this->input->is_ajax_request()) {
                $this->stat_login();
                return false;
            }
            
	    // Total users count
	    $data['tusers']	    = $this->Users->getCount(1);
	    
	    // Total participant count
	    $data['tparticipant']   = $this->Participants->getCount();
	    
	    // Total gallery count
	    $data['timages']	    = $this->Gallery->getCount();
	    
	    // Set class name to view
	    $data['class_name'] = $this->_class_name;
	    
	    // Set module with URL request 
            $data['module_title'] = $this->module;

	    // Set page title
	    $data['title']	= "Dashboard Home";
	    
	    // Set main template
	    $data['main']	= 'admin/dashboard';
	    
            // Set admin title page with module menu
            $data['page_title'] = $this->module_menu;

	    //$this->load->view('template/dashboard');
	    $this->load->view('template/admin/admin_template', $this->load->vars($data));
		
	}
        
        public function stat_login() {
            
            // Check if the request via AJAX
            if (!$this->input->is_ajax_request()) {
                exit('No direct script access allowed');		
            }
            
            /*
	    var visitors = [
                ['01/2013', 500],
                ['02/2013', 1500],
                ['03/2013', 2600],
                ['04/2013', 1200],
                ['05/2013', 560],
                ['06/2013', 2000],
                ['07/2013', 2350],
                ['08/2013', 1500],
                ['09/2013', 4700],
                ['10/2013', 1300],
            ];
	     * 
	     */
	    
	    
	    $stats = $this->Users->getLoginStats();
            if(!empty($stats)) {
                    
                $temp = array();
                foreach ($stats as $val) {
                    $temp[] = array($val->last_login,$val->total_login);
                }
                $result['result'] = $temp;

            }

            // Return data esult
            $data['json'] = $result;

            // Load data into view		
            $this->load->view('json', $this->load->vars($data));
	    
        }
}
