import React from 'react';

export default class PaginationLinks extends React.Component<IPaginationLinksProps> {
  constructor(props: IPaginationLinksProps) {
    super(props);
  }

  getLinks = (linkString: string) => {
    let links: string[] = linkString.split(',')
    let linksArr: any = links.map((link: string) => {
      // let formattedLink: string = link.split(';').shift().match(/=\d*/)[1]

      return (
        <li className='page-item'>

        </li>
      )
    })
  }

  render() {
    let currentPage: number = this.props.currentPage
    let lastPage: number = this.props.lastPage
    return(
      <div>
        <ul className='pagination'>
          <li className='page-item'>
            <a className="page-link" href={ currentPage.toString() }>
              { currentPage }
            </a>
          </li>
          <li className='page-item'>
            <a className="page-link" href={lastPage.toString()}>
              {lastPage}
            </a>
          </li>
        </ul>
      </div>
    )
  }

}
