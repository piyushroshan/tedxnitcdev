from django.http import *
from django import forms
from django.conf import settings
from django.template.loader import get_template
from django.template import RequestContext
from django.forms import ModelForm
from nominations.models import *
from nominations.forms import *
from django.utils.timezone import utc
from django.contrib.sites.models import Site
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
def nominated(request):
	if request.method == 'POST':
		form = NominationForm(request.POST)
		if form.is_valid():
			from django.core.mail import *
			current_domain = Site.objects.get_current().domain
			subject = "New nomination at %s" % current_domain
			message_template = get_template('nominations/nomination_email.txt')
			message_context = Context({ 'form': form })
			message = message_template.render(message_context)
			EmailMessage(subject, message, settings.DEFAULT_FROM_EMAIL, [new_user.email])
			form.save()
			return HttpResponseRedirect('/')
		else:
			t=get_template('nominations/nomination.html')
			c=RequestContext(request,{ 'form': form})
			return HttpResponse(t.render(c))
