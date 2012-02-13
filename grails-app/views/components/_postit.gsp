%{--
  - Copyright (c) 2010 iceScrum Technologies.
  -
  - This file is part of iceScrum.
  -
  - iceScrum is free software: you can redistribute it and/or modify
  - it under the terms of the GNU Lesser General Public License as published by
  - the Free Software Foundation, either version 3 of the License.
  -
  - iceScrum is distributed in the hope that it will be useful,
  - but WITHOUT ANY WARRANTY; without even the implied warranty of
  - MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  - GNU General Public License for more details.
  -
  - You should have received a copy of the GNU Lesser General Public License
  - along with iceScrum.  If not, see <http://www.gnu.org/licenses/>.
  --}%

<div class="${className} ${styleClass} story-container postit-${type}" id="postit-${type}-${id}" elemId="${id}">


<div class="story ${color}">

    <g:if test="${className != 'postit-rect'}">
    %{-- tech story --}%
        <g:if test="${typeNumber == 2}">
            <div class="story-number-container button key" title="${typeTitle ?: ''}">
        </g:if>
    %{-- defect --}%
        <g:elseif test="${typeNumber == 3}">
            <div class="story-number-container button bug" title="${typeTitle ?: ''}">
        </g:elseif>
        <g:else>
            <div class="story-number-container">
        </g:else>


            <h5>${miniId}</h5>
        <g:if test="${workingTime != null}">
            <p class="all-time">123</p>
        </g:if>
            <div></div>

        </div>
    </g:if>

    <dl>
    %{-- Title --}%
        <p class="postit-sortable break-word"><dt>${title.encodeAsHTML()}</dt></p>


        <g:if test="${className != 'postit-rect'}">
            <dd>${content.replace('<br>', '')}</dd>
        </g:if>


    </dl>

    <div class="story-footer">

        <g:if test="${attachment}">

            <div class="paper-clip"
                 title="${message(code: 'is.postit.attachment', args: [attachment, (attachment instanceof Integer && attachment > 1) ? 's' : ''])}"></div>

        </g:if>


        <g:if test="${comment}">
            <div class="speech-bubble"
                  title="${message(code: 'is.postit.comment.count', args: [comment, (comment instanceof Integer && comment > 1) ? 's' : ''])}"></div>
        </g:if>
    %{--Embedded menu--}%
        <g:if test="${embeddedMenu}">
            <div class="button-make">
                <div class="dropmenu-action">
                    ${embeddedMenu}
                </div>
            </div>
        </g:if>

    %{--Status bar of the post-it note--}%
        <div class="state task-state">

        %{--Estimation--}%
            <g:if test="${miniValue != null}">
                <span class=" opacity-70 mini-value ${editableEstimation ? 'editable' : ''}">${miniValue}</span>
            </g:if>
        %{--State label--}%
            <span class="text-state"><is:truncated encodedHTML="true" size="16">${stateText}</is:truncated></span>


            <g:if test="${tooltip}">
                ${tooltip}
            </g:if>

        </div>

    </div>
</div>
</div>