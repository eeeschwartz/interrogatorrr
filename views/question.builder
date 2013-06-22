xml.instruct! :xml, :version => '1.0'
xml.Response do
  xml.Record maxLength: 60, transcribe: true
  xml.Say voice: "woman" do
    xml.text! question
  end
  xml.Pause length: 50
  xml.Say voice: "woman" do
    xml.text! "10 seconds left!"
  end
  xml.Pause length: 9
  xml.Say voice: "woman" do
    xml.text! "All for now!"
  end
end
