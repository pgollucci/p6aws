######################################################################
#<
#
# Function:
#      = p6_aws_mediaconvert_resource_tag(arn, tags)
#
# Arg(s):
#    arn - 
#    tags - 
#
#
#>
######################################################################
p6_aws_mediaconvert_resource_tag() {
    local arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws mediaconvert tag-resource --arn $arn --tags $tags "$@"
}