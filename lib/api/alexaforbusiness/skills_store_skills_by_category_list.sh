######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_skills_store_skills_by_category_list(category_id)
#
#  Args:
#	category_id - 
#
#>
######################################################################
p6_aws_alexaforbusiness_skills_store_skills_by_category_list() {
    local category_id="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness list-skills-store-skills-by-category --category-id $category_id "$@"
}