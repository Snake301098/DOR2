/// @description KAMI
if instance_exists(owner)
{
owner.can_use_kami = true;

}
else
{
	instance_destroy();
}