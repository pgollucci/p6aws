######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_global_service_events(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_cloudtrail_global_service_events() {
        local name="$1"
        shift 1

    cond_log_and_run aws cloudtrail update-trail --name $name --include-global-service-events "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_multi_region_trail(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_cloudtrail_multi_region_trail() {
        local name="$1"
        shift 1

    cond_log_and_run aws cloudtrail update-trail --name $name --is-multi-region-trail "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_log_file_validation(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_cloudtrail_log_file_validation() {
        local name="$1"
        shift 1

    cond_log_and_run aws cloudtrail update-trail --name $name --enable-log-file-validation "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_cloudtrail_organization_trail(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_cloudtrail_organization_trail() {
        local name="$1"
        shift 1

    cond_log_and_run aws cloudtrail update-trail --name $name --is-organization-trail "$@"
}