

inject = (cls, args...) ->
  if cls.scope?.toUpperCase() is 'SINGLETON' and args.length
    throw Error('Cannot assign aguments to a singleton')

  _requiresInjection_: true
  cls:  cls
  args: args

module.exports = inject
