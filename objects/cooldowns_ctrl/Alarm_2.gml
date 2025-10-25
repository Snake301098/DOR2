/// @description EMP
if instance_exists(owner)
{
owner.can_use_emp = true;

}
else
{
	instance_destroy();
}