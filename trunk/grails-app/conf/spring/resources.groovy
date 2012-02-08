// Place your Spring DSL code here
beans = {
	entityInterceptor(solar.interceptor.SolarHibernateInterceptor)
	eventTriggeringInterceptor(solar.interceptor.SolarGlobalEventTriggering)
}
