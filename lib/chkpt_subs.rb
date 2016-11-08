module Chkpt_Subs
  def create_submission(asmt_branch, asmt_commit_link, chkpt_id, comment, enrollment_id)
    response = self.class.post("#{@base_uri}/checkpoint_submissions", body: { asmt_branch: asmt_branch, asmt_commit_link: asmt_commit_link, chkpt_id: chkpt_id, comment: comment, enrollment_id: enrollment_id }, headers: {'authorization' => @auth_token})
    submission = JSON.parse(response)
  end
end
