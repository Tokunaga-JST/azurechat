param appName string

param currentSettings object
param setting object

resource siteConfig 'Microsoft.Web/sites/config@2021-03-01' = {
  name: '${appName}/appsettings'
  properties: union(currentSettings, setting)
}
