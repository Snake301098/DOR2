/// @description SPECTRUM effect

if instance_exists(owner)
{

owner.can_use_spectrum = true;

}
else
{
	instance_destroy();
}