<?php
declare(strict_types=1);

namespace App\Test\TestCase\Controller;

use App\Controller\ArticlesController;
use App\Model\Table\ArticlesTable;
use App\Test\Factory\articleFactory;
use Cake\Http\Exception\NotFoundException;
use Cake\TestSuite\IntegrationTestTrait;
use Cake\TestSuite\TestCase;

/**
 * App\Controller\ArticlesController Test Case
 *
 * @uses \App\Controller\ArticlesController
 */
class ArticlesControllerTest extends TestCase
{
    use IntegrationTestTrait;

    /**
     * Fixtures
     *
     * @var array<string>
     */
    protected $fixtures = [
        'app.Articles',
        'app.Users',
        'app.Tags',
        'app.ArticlesTags',
    ];

    /**
     * Test index method
     *
     * @return void
     * @uses \App\Controller\ArticlesController::index()
     */
    public function testIndex(): void
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test view method
     *
     * @return void
     * @uses \App\Controller\ArticlesController::view()
     */
    public function testView(): void
    {
        // arrange
        $data = ['slug' => 'sample' ];
        // $entity = ArticlesTable::newEntity($data);
        // ArticlesTable::save($entity);
        $article = ArticleFactory::make()->persist();

        // act
        $articleId = $article->id;
        $this->get("/articles/view/{$articleId}");

        // arrange
        $this->assertResponseOk();
        $actual = $this->viewVariable('article');
        $this->assertSame($articleId, $actual->id);
    }

    public function testView_articleNotExists(): void
    {
        // act
        $articleId = 1001;
        $this->get("/articles/view/{$articleId}");

        // arrang-
        $this->assertResponseCode(404);
    }

    /**
     * Test add method
     *
     * @return void
     * @uses \App\Controller\ArticlesController::add()
     */
    public function testAdd(): void
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test edit method
     *
     * @return void
     * @uses \App\Controller\ArticlesController::edit()
     */
    public function testEdit(): void
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test delete method
     *
     * @return void
     * @uses \App\Controller\ArticlesController::delete()
     */
    public function testDelete(): void
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
