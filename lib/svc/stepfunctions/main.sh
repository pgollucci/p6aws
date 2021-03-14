######################################################################
#<
#
# Function: p6_aws_svc_stepfunctions_list()
#
#>
######################################################################
p6_aws_svc_stepfunctions_list() {

    p6_aws_cli_cmd stepfunctions list-state-machines \
        --output text \
        "$@"
}

######################################################################
#<
#
# Function: p6_aws_svc_stepfunctions_state_machine_show(state_machine, ...)
#
#  Args:
#	state_machine -
#	... - 
#
#>
######################################################################
p6_aws_svc_stepfunctions_state_machine_show() {
    local state_machine="$1"
    shift 1

    local dir=$(p6_transient_create "aws.stepfunctions")
    local outfile="$dir/outfile"

    p6_aws_cli_cmd stepfunctions describe-state-machine \
        --output json \
        $state_machine \
        "$@" >$dir/response

    grep definition $dir/response |
        sed -e 's, "definition": ,,' |
        sed -e 's,\\,,g' -e 's,"{,{,g' -e 's,}",},g' -e 's/,$//' |
        python -mjson.tool

    p6_return_void
}
