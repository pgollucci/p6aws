######################################################################
#<
#
# Function:
#	p6_aws_ses_template_create(template)
#
#  Args:
#	template - 
#
#>
######################################################################
p6_aws_ses_template_create() {
    local template="$1"
    shift 1

    p6_run_write_cmd aws ses create-template --template $template "$@"
}