######################################################################
#<
#
# Function:
#      = p6_aws_mturk_file_upload_url_get(assignment_id, question_identifier)
#
# Arg(s):
#    assignment_id - 
#    question_identifier - 
#
#
#>
######################################################################
p6_aws_mturk_file_upload_url_get() {
    local assignment_id="$1"
    local question_identifier="$2"
    shift 2

    p6_run_read_cmd aws mturk get-file-upload-url --assignment-id $assignment_id --question-identifier $question_identifier "$@"
}