<div class="contentItem">

  <div class="contentItemLinks">
    <a href="./help/staticPages.html" target="_blank">Help</a>
  </div>

  <h1>Static pages</h1>
  <h2>&nbsp;</h2>

  <div class="contentItemBody">
    <pebble:isBlogContributor>
    <form name="staticPagesForm" method="post" action="removeStaticPages.secureaction">
    </pebble:isBlogContributor>

    <table width="99%" cellspacing="0" cellpadding="4">
      <thead>
      <tr>
        <pebble:isBlogContributor>
        <th><input type="checkbox" name="allPages" onclick="toggleCheckAll(document.staticPagesForm.allPages, document.staticPagesForm.page)"/></th>
        </pebble:isBlogContributor>
        <th>Name</th>
        <th>Title</th>
        <th align="right">Actions</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="staticPage" items="${staticPages}" varStatus="status">
        <c:choose>
          <c:when test="${status.count % 2 == 0}">
            <tr class="even small">
          </c:when>
          <c:otherwise>
              <tr class="odd small">
          </c:otherwise>
        </c:choose>
        <pebble:isBlogContributor>
        <td width="2%">
          <input type="checkbox" name="page" value="${staticPage.id}" />
        </td>
        </pebble:isBlogContributor>
        <td>
          <a href="${staticPage.localPermalink}">${staticPage.name}.html</a>
        </td>
        <td>
          ${staticPage.title}
        </td>
        <td align="right">
          <c:choose>
          <c:when test="${empty staticPage.lockedBy}">
            <pebble:isBlogContributor>
            <a href="editStaticPage.secureaction?page=${staticPage.id}#form">Edit</a>
            </pebble:isBlogContributor>
          </c:when>
          <c:when test="${staticPage.lockedBy == authenticatedUser.username}">
            <pebble:isBlogContributor>
            <a href="editStaticPage.secureaction?page=${staticPage.id}#form">Edit</a> |
            </pebble:isBlogContributor>
            <a href="unlockStaticPage.secureaction?page=${staticPage.id}" title="Locked by ${staticPage.lockedBy}">Unlock</a>
          </c:when>
          <c:when test="${not empty staticPage.lockedBy}">
            <pebble:isBlogAdminOrBlogOwner>
            <a href="unlockStaticPage.secureaction?page=${staticPage.id}" title="Locked by ${staticPage.lockedBy}">Unlock</a>
            </pebble:isBlogAdminOrBlogOwner>
          </c:when>
          <c:otherwise>
            -
          </c:otherwise>
          </c:choose>
        </td>
      </tr>
      </c:forEach>
      </tbody>
    </table>

    <br />

    <pebble:isBlogContributor>
    <table width="99%" cellspacing="0" cellpadding="0">
      <tr>
        <td align="right">
          <input type="submit" value="Remove" />
        </td>
      </tr>
    </table>
    </form>
    </pebble:isBlogContributor>

</div>

</div>