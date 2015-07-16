.class public Lcom/yik/yak/ui/activity/FamousActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements LDf;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public c:Landroid/content/Context;

.field protected d:Landroid/support/v7/widget/LinearLayoutManager;

.field private e:Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;

.field private f:Lcom/yik/yak/data/models/Yak;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/FamousShareCard;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Z

.field protected imgShareCardPreview:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0067
    .end annotation
.end field

.field private j:Z

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d006f
    .end annotation
.end field

.field protected txtShareFamous:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0070
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 73
    iput v1, p0, Lcom/yik/yak/ui/activity/FamousActivity;->h:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->i:Z

    .line 77
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/FamousActivity;->j:Z

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/FamousActivity;)Lcom/yik/yak/data/models/Yak;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    return-object v0
.end method

.method private a(Lcom/yik/yak/data/models/Yak;IZ)V
    .locals 31

    .prologue
    .line 228
    const v9, 0x7f0200ed

    .line 233
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/FamousActivity;->a(I)I

    move-result v3

    .line 236
    const/16 v10, 0x400

    .line 237
    const/16 v11, 0x254

    .line 239
    const/16 v12, 0x82

    .line 240
    const/16 v13, 0x1e

    .line 241
    const/16 v14, 0x13b

    .line 242
    const/16 v15, 0x19

    .line 245
    const/16 v16, 0x177

    .line 246
    const/16 v17, 0x258

    .line 247
    const/16 v18, 0xa5

    .line 249
    const/4 v8, 0x0

    .line 250
    const/16 v19, 0xc8

    .line 251
    const/16 v20, 0x177

    .line 252
    const/16 v21, 0x258

    .line 253
    const/16 v22, 0x12c

    .line 254
    const/high16 v23, 0x420c0000    # 35.0f

    .line 255
    const/high16 v24, 0x41f00000    # 30.0f

    .line 257
    const/16 v25, 0x1ea

    .line 258
    const/16 v26, 0x366

    .line 259
    const/16 v27, 0x96

    .line 260
    const/16 v28, 0x64

    .line 261
    const/high16 v29, 0x42200000    # 40.0f

    .line 264
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 265
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v30

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    new-instance v7, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v7, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 267
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 268
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 269
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v10

    int-to-float v6, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 276
    const/4 v4, 0x1

    invoke-static {v3, v10, v11, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 277
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/FamousActivity;->b(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 282
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 283
    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 284
    sub-int v4, v14, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v13

    int-to-float v4, v4

    sub-int v5, v14, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v12

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 287
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 288
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/FamousActivity;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const/4 v4, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 293
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x78

    invoke-virtual {v3, v4, v5, v14, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 294
    invoke-virtual {v3}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    int-to-float v5, v13

    const/16 v6, 0x1bd

    int-to-float v6, v6

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 295
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f1

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 300
    const/4 v4, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 301
    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    iget-object v3, v3, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 306
    const/16 v3, 0x32

    .line 307
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    iget-object v5, v5, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const/4 v5, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 311
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 312
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 314
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 315
    invoke-virtual {v4}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    move/from16 v0, v20

    int-to-float v6, v0

    move/from16 v0, v19

    int-to-float v8, v0

    invoke-virtual {v2, v5, v6, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 316
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 320
    :goto_0
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 321
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    iget-object v5, v5, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x96

    if-le v5, v6, :cond_0

    .line 323
    const/4 v5, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    :goto_1
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 329
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 331
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 332
    invoke-virtual {v4}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    move/from16 v0, v20

    int-to-float v6, v0

    add-int v3, v3, v19

    int-to-float v3, v3

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 333
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 336
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v5, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VOTES"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const/4 v4, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 339
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 340
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 342
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 343
    invoke-virtual {v3}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    move/from16 v0, v26

    int-to-float v5, v0

    move/from16 v0, v25

    int-to-float v6, v0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 346
    if-eqz p3, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yik/yak/ui/activity/FamousActivity;->imgShareCardPreview:Landroid/widget/ImageView;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/yik/yak/ui/activity/FamousActivity;->j:Z

    .line 368
    return-void

    .line 326
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 362
    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    const-string v3, "Unable to generate image."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 363
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_2

    .line 351
    :cond_1
    :try_start_2
    invoke-static {}, LHa;->a()LHa;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    iget v4, v4, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/yik/yak/data/models/Yak;->Type:I

    invoke-static {v5}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/FamousActivity;->d(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual/range {v2 .. v7}, LHa;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/yik/yak/ui/activity/FamousActivity;->b(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, LHt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/yik/yak/ui/activity/FamousActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 365
    :catch_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    const-string v3, "Unable to generate image."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    move v3, v8

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/FamousActivity;Lcom/yik/yak/data/models/Yak;IZ)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/yik/yak/ui/activity/FamousActivity;->a(Lcom/yik/yak/data/models/Yak;IZ)V

    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/FamousActivity;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->h:I

    return v0
.end method

.method private b(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 6

    .prologue
    .line 371
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 372
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 373
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 375
    const/4 v1, 0x0

    .line 376
    invoke-static {v2}, LHi;->a([B)Ljava/io/File;

    move-result-object v3

    .line 378
    if-eqz v3, :cond_0

    .line 380
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 382
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 388
    if-eqz v0, :cond_0

    .line 391
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 398
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    return-object v3

    .line 393
    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unable to write log to file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 391
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 393
    :catch_2
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unable to write log to file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :catch_3
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_0

    .line 391
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 393
    :catch_4
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unable to write log to file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 391
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 394
    :cond_1
    :goto_4
    throw v0

    .line 393
    :catch_5
    move-exception v1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unable to write log to file."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 388
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected a(I)I
    .locals 2

    .prologue
    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 417
    aget v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const v0, 0x7f0b00d5

    goto :goto_0
.end method

.method public a()V
    .locals 8

    .prologue
    .line 212
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f0d0068

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment;

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment;->b()Lki;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lki;->d()LkH;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LkH;->a(Z)V

    .line 219
    invoke-virtual {v0}, Lki;->d()LkH;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LkH;->b(Z)V

    .line 220
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v2, v1}, Lkh;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lkg;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lki;->a(Lkg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(LDp;LDd;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDp",
            "<*>;",
            "LDd;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 200
    iput p3, p0, Lcom/yik/yak/ui/activity/FamousActivity;->h:I

    .line 201
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/FamousActivity;->i:Z

    .line 202
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->j:Z

    if-nez v0, :cond_0

    .line 203
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/FamousActivity;->j:Z

    .line 204
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    invoke-direct {p0, v0, p3, v1}, Lcom/yik/yak/ui/activity/FamousActivity;->a(Lcom/yik/yak/data/models/Yak;IZ)V

    .line 206
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->imgShareCardPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    return-void
.end method

.method protected b(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected c()F
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 477
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 478
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 480
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected c(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 446
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 447
    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "HARRY YAKKER"

    goto :goto_0
.end method

.method protected d(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 458
    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "famous-harry"

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    .line 190
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->finish()V

    .line 191
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    iget v1, p0, Lcom/yik/yak/ui/activity/FamousActivity;->h:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yik/yak/ui/activity/FamousActivity;->a(Lcom/yik/yak/data/models/Yak;IZ)V

    .line 196
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/FamousActivity;->setContentView(I)V

    .line 108
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/FamousActivity;->a(Ljava/lang/String;)V

    .line 110
    iput-object p0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    .line 111
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 113
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->a()V

    .line 115
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    const-string v2, "yak"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const-string v2, "yak"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :try_start_0
    new-instance v2, LAv;

    invoke-direct {v2}, LAv;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    .line 122
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    iput-object p0, v0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->finish()V

    .line 140
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->g:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 142
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090008

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    move v0, v1

    .line 145
    :goto_1
    :try_start_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 146
    iget-object v5, p0, Lcom/yik/yak/ui/activity/FamousActivity;->g:Ljava/util/ArrayList;

    new-instance v6, Lcom/yik/yak/data/models/FamousShareCard;

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v8, v3, v0

    aget v9, v4, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/yik/yak/data/models/FamousShareCard;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    new-instance v0, Lcom/yik/yak/data/models/Yak;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Yak;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    .line 130
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    iput-object p0, v0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    const-string v2, "This is a test yak!"

    iput-object v2, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->finish()V

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->imgShareCardPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x44150000    # 596.0f

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/FamousActivity;->c()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->txtShareFamous:Landroid/widget/TextView;

    new-instance v2, LAY;

    invoke-direct {v2, p0}, LAY;-><init>(Lcom/yik/yak/ui/activity/FamousActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->d:Landroid/support/v7/widget/LinearLayoutManager;

    .line 164
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 165
    new-instance v0, Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/FamousActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/yik/yak/ui/activity/FamousActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->e:Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;

    .line 166
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/FamousActivity;->e:Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 167
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->e:Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/adapter/ShareCardRecyclerViewAdapter;->setOnItemClickListener(LDf;)V

    .line 168
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/FamousActivity;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 171
    iget-object v0, p0, Lcom/yik/yak/ui/activity/FamousActivity;->f:Lcom/yik/yak/data/models/Yak;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yik/yak/ui/activity/FamousActivity;->a(Lcom/yik/yak/data/models/Yak;IZ)V

    .line 172
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onDestroy()V

    .line 182
    return-void
.end method
