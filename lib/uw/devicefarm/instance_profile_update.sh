######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_cleanup(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_cleanup() {
        local arn="$1"
        shift 1

    cond_log_and_run aws devicefarm update-instance-profile --arn $arn --package-cleanup "$@"
}

######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_after_use(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_after_use() {
        local arn="$1"
        shift 1

    cond_log_and_run aws devicefarm update-instance-profile --arn $arn --reboot-after-use "$@"
}
