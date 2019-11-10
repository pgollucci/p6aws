######################################################################
#<
#
# Function: p6_aws_stepfunctions_svc_list()
#
#>
######################################################################
p6_aws_stepfunctions_svc_list() {

    p6_aws_stepfunctions_state_machines_list \
	--output text \
	"$@"
}

######################################################################
#<
#
# Function: p6_aws_stepfunctions_svc_state_machine_show(state_machine)
#
#  Args:
#	state_machine - 
#
#>
######################################################################
p6_aws_stepfunctions_svc_state_machine_show() {
    local state_machine="$1"
    shift 1

    local dir=$(p6_transient_create "aws.stepfunctions")
    local outfile="$dir/outfile"

    p6_aws_stepfunctions_state_machine_describe \
	--output json \
	$state_machine \
	"$@" > $dir/response

    grep definition $dir/response | sed -e 's, "definition": ,,' | sed -e 's,\\,,g' -e 's,"{,{,g' -e 's,}",},g' -e 's/,$//' | python -mjson.tool

    p6_transient_delete "$outfile"
}