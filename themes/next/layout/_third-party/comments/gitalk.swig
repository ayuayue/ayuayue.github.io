{%- if page.comments %}
<link rel="stylesheet" href="/css/gitalk.min.css" />
<script type="text/javascript" src="/js/gitalk.min.js"></script>
<script>
NexT.utils.loadComments(document.querySelector('#gitalk-container'), () => {
  NexT.utils.getScript('{{ gitalk_js_uri }}', () => {
    var gitalk = new Gitalk({
      clientID    : '{{ theme.gitalk.client_id }}',
      clientSecret: '{{ theme.gitalk.client_secret }}',
      repo        : '{{ theme.gitalk.repo }}',
      owner       : '{{ theme.gitalk.github_id }}',
      admin       : ['{{ theme.gitalk.admin_user }}'],
      id          : '{{ gitalk_md5(page.path) }}',
      {%- if theme.gitalk.language == '' %}
        language: window.navigator.language || window.navigator.userLanguage,
      {% else %}
        language: '{{ theme.gitalk.language }}',
      {%- endif %}
      distractionFreeMode: {{ theme.gitalk.distraction_free_mode }}
    });
    gitalk.render('gitalk-container');
  }, window.Gitalk);
});
</script>
{%- endif %}
