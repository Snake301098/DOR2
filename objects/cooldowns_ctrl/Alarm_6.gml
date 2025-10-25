/// @description SENTINEL effect

if instance_exists(owner)
{

owner.can_use_sentinel = true;

}
else
{
	instance_destroy();
}