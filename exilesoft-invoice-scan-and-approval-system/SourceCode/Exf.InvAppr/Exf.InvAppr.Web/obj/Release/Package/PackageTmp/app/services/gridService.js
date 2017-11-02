'use strict';
app.factory('grideService', ['app_config', function (app_config) {

    var gridServiceFactory = {};

    function _sortChange(searchOptions, sortColumns) {
        if (sortColumns.length == 0) {
            searchOptions.sortColumn = null;
        } else {
            searchOptions.sortOrder = sortColumns[0].sort.direction;
            searchOptions.sortColumn = sortColumns[0].field;
        }
        return searchOptions;
    };

    function _pageChange(newPage, pageSize) {
        searchOptions.pageNumber = newPage;
        searchOptions.pageSize = pageSize;
        return searchOptions;
    };

    // original pageChange has issues
    // trying to fix them without failing reffered methods
    function _changePage(searchOptions, newPage, pageSize) {
        searchOptions.pageNumber = newPage;
        searchOptions.pageSize = pageSize;
        return searchOptions;
    }

    function _filterChange(searchOptions, grid) {
        for (var index = 0; index < grid.columns.length; index++) {
            var column = grid.columns[index];
            if (typeof (column.filters[0].term) != 'undefined') {
                if (column.name == "Status") {
                    searchOptions["statusFilter"] = column.filters[0].term;
                }
                else {
                    searchOptions[column.name] = column.filters[0].term;
                }
            }
        }
        return searchOptions;
    };

    gridServiceFactory.ChangeSortOptions = _sortChange;
    gridServiceFactory.pageChange = _pageChange;
    gridServiceFactory.changePage = _changePage;
    gridServiceFactory.filterChange = _filterChange;

    return gridServiceFactory

}]);