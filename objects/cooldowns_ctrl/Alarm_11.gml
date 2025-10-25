/// @description SMB

if instance_exists(owner)
{

owner.can_use_smb = true;


}
else
{
	instance_destroy();
}						