module Chkpt_Subs
  def create_submission(asmt_branch, asmt_commit_link, chkpt_id, comment, enrollment_id)
    body = get_submission_body asmt_branch, asmt_commit_link, chkpt_id, comment, enrollment_id
    response = self.class.post("#{@base_uri}/checkpoint_submissions", headers: {'authorization' => @auth_token}, body: body)
    submission = JSON.parse(response.body)
  end
end
