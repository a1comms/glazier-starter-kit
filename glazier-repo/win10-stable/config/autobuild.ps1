$config_server = "https://storage.googleapis.com/a1comms-glazier-config"

$Host.UI.RawUI.WindowTitle = 'Glazier'
$env:LOCALAPPDATA = 'C:\'
$env:PYTHONPATH = 'C:\glazier\'
$env:SSL_CERT_FILE = 'C:\glazier-resources\ca-certs.crt'
Write-Output 'Starting Glazier imaging process...'

# For a full list of Glazier flags, execute `python autobuild.py --helpfull`
$py_args = @(
  "C:\glazier\glazier\autobuild.py",
  "--config_server=$config_server",
  '--resource_path=C:\glazier-resources',
  '--glazier_spec_os=win10-stable',
  '--preserve_tasks=true'
)

& C:\Python\python.exe $py_args