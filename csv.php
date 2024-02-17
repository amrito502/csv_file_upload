<?php
class csv extends mysqli
{
    private $state_csv = false;

   public function __construct()
    {
        parent::__construct("localhost","root","","csv_file_upload");
        if($this->connect_error){
            echo "Fail To Connect DB :". $this->connect_error;
        }
    }


    public function import($file)
    {
        $file = fopen($file, 'r');
        while ($row = fgetcsv($file)){
            $value = "'". implode("','", $row) ."'";
            $q = "INSERT INTO file(first,last,age) VALUES(". $value .")";
            if($this->query($q)){
                $this->state_csv = true;
            }else{
                $this->state_csv = false;
                echo $this->error;
            }
        }
        if($this->state_csv){
            echo "Successfully Imported";
            
        }else{
            echo "Something Went Worng";
        }
    }

}


?>