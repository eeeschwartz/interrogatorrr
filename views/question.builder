xml.instruct! :xml, :version => '1.0'

xml.Response do
  xml.Record maxLength: 10, transcribe: true
  xml.Say voice: "woman" do
    xml.text! questions.first
  end
end

# xml.Response do
#   questions.each do |question|
#     xml.Say voice: "woman" do
#       xml.text! question
#     end
#     xml.Pause length: 15
#   end
# end
