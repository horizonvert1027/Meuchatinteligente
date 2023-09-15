<?
    namespace APP\Mails ;
    use Illuminate\Mail\Mailable;

    class SendPasscode extends Mailable
    {
        public $data;
        public $subject;

        public function __construct($data, $subject)
        {
            $this->data = $data;
            $this->subject = $subject;
        }

        public function build()
        {
            return $this->view('emails.passcode')
                ->subject($this->subject)
                ->with($this->data);
        }
    }
?>