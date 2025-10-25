/// @description shieldbackup
if instance_exists(owner)
{
owner.can_use_shieldbackup = true;

}
else
{
	instance_destroy();
}