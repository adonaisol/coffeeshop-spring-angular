import { MyCoffeeShopPage } from './app.po';

describe('my-coffee-shop App', () => {
  let page: MyCoffeeShopPage;

  beforeEach(() => {
    page = new MyCoffeeShopPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
