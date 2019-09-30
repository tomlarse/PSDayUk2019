# PlatyPS Demo
# Importing the module
Import-Module .\src\PlaygroundTools.psd1

# Check the Import-Module
Get-Module PlaygroundTools

# Check help for Add-PlaygroundToy
Get-Help Add-PlaygroundToy

# Generate markdown documentation with PlatyPS
New-MarkdownHelp -Module PlaygroundTools -OutputFolder '.\docs\code\' -WithModulePage

#Generate ExternalHelp

New-ExternalHelp -Path '.\docs\Code' -OutputPath '.\src\en-US'

# Reload the module
Import-Module .\src\PlaygroundTools.psd1 -Force

# Get help
Get-Help Get-PlaygroundToy