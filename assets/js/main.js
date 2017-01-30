
(function () {
    var initial = {};
    var direction = 1;
    var iframe, container, overlay;

    function css(el, prop) { return window.getComputedStyle(el, null).getPropertyValue(prop); }

    function mousemove(evt) {
        var diff = evt.pageX - initial.pageX;
        var newWidth = initial.width + direction * diff * 2;

        if (newWidth > 0) {
            // Resize container based on mousepos
            container.style.width = initial.width + direction * diff * 2 + 'px';
            container.style.left = initial.left - direction * diff + 'px';

            // Resize iframe based on new height
            iframe.height = iframe.contentWindow.document.body.clientHeight;
        } else {
            container.style.width = 0 + 'px';
            container.style.left = initial.left + initial.width/2 + 'px';
        }
    }

    function mouseup() {
        container.className = container.className.replace(' doc-example--dragging', '')
        document.body.removeChild(overlay);

        initial = {};
        direction = 1;
        iframe = null;
        container = null;
        overlay = null;
        document.removeEventListener('mousemove', mousemove);
    }

    document.addEventListener('mousedown', function (evt) {
        var target = evt.target;
        var klasses = target && target.className;

        if (klasses.indexOf('doc-example__drag-bar') !== -1) {
            evt.preventDefault();

            overlay = document.createElement('div');
            overlay.className = 'doc-overlay';
            document.body.appendChild(overlay);

            if (klasses.indexOf('doc-example__drag-bar--left') !== -1) {
                direction = -1;
            }

            container = target.parentNode;
            iframe = container.firstChild;

            initial.pageX = evt.pageX;
            initial.pageY = evt.pageY;
            initial.width = parseFloat(css(container, 'width'), 10);
            initial.left = parseFloat(css(container, 'left'), 10);

            container.className += ' doc-example--dragging';

            document.addEventListener('mousemove', mousemove);
            document.addEventListener('mouseup', mouseup);
        }
    });

    function iframeResize() {
        [].map.call(document.querySelectorAll('iframe'), function (iframe) {
            iframe.height = iframe.contentWindow.document.body.clientHeight;
        });
    }
}())
