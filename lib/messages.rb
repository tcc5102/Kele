module Messages
  def get_messages
    response = self.class.get("#{@base_uri}/message_threads", headers: { "authorization" => @auth_token })
    @messages = JSON.parse(response.body)
  end

  def create_message(user_id, recipient_id, subject, stripped)
    response = (self.class.post("#{@base_uri}/messages", body: { user_id: user_id, recipient_id: recipient_id, subject: subject, stripped: stripped }, headers: { "authorization" => @auth_token }))
    puts response.code
  end
end
