.class public LHo;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/app/ProgressDialog;

.field private b:Landroid/content/Context;

.field private c:Lcom/yik/yak/data/models/Yak;

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/yik/yak/ui/activity/FamousActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object v0, p0, LHo;->d:Landroid/graphics/Bitmap;

    .line 41
    iput-object v0, p0, LHo;->e:Lcom/yik/yak/ui/activity/FamousActivity;

    .line 49
    iput-object p1, p0, LHo;->b:Landroid/content/Context;

    .line 50
    iput-object p2, p0, LHo;->c:Lcom/yik/yak/data/models/Yak;

    .line 53
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Yak;)Landroid/graphics/Bitmap;
    .locals 20

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v4, v2

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, LHo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 117
    const v2, 0x7f02004b

    .line 119
    packed-switch v4, :pswitch_data_0

    move v9, v2

    .line 140
    :goto_0
    const/16 v5, 0x400

    .line 141
    const/16 v10, 0x254

    .line 142
    const/16 v11, 0x32

    .line 143
    const/16 v12, 0x4b

    .line 144
    const/16 v13, 0x6e

    .line 145
    const/high16 v14, 0x42200000    # 40.0f

    .line 146
    const/high16 v15, 0x42200000    # 40.0f

    .line 148
    const/16 v16, 0x96

    .line 149
    const/high16 v17, 0x42100000    # 36.0f

    .line 152
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 153
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 155
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v5

    int-to-float v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, LHo;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201a2

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 168
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0xde

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v6, v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int v18, v18, v11

    move/from16 v0, v18

    invoke-direct {v5, v11, v11, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 171
    move-object/from16 v0, p1

    iget v3, v0, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 176
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7, v3, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 177
    iget v5, v4, Landroid/graphics/Rect;->right:I

    rsub-int v5, v5, 0x3ce

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v4

    int-to-float v4, v4

    int-to-float v5, v12

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    const-string v3, "UPVOTES"

    .line 181
    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 185
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7, v3, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 186
    iget v5, v4, Landroid/graphics/Rect;->right:I

    rsub-int v5, v5, 0x3ce

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v4

    int-to-float v4, v4

    int-to-float v5, v13

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, LHo;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 192
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v10, v6

    int-to-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v3, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, LHo;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02019f

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 198
    const/16 v4, 0x78

    .line 199
    const/16 v6, 0x7d

    .line 200
    const/4 v9, 0x1

    invoke-static {v3, v4, v6, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 201
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    const/16 v3, 0x1c4

    int-to-float v3, v3

    rsub-int v5, v5, 0x1d7

    add-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 204
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, LHo;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 207
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 212
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x39c

    const/16 v9, 0x190

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 213
    invoke-virtual {v3}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    int-to-float v5, v11

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v8

    .line 223
    :goto_1
    return-object v2

    .line 121
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, LHo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 122
    const v2, 0x7f02004b

    move v9, v2

    .line 123
    goto/16 :goto_0

    .line 125
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, LHo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 126
    const v2, 0x7f02015a

    move v9, v2

    .line 127
    goto/16 :goto_0

    .line 129
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, LHo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 130
    const v2, 0x7f02015e

    move v9, v2

    .line 131
    goto/16 :goto_0

    .line 133
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, LHo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 134
    const v2, 0x7f0200f9

    move v9, v2

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, LHo;->b:Landroid/content/Context;

    const-string v3, "Unable to generate image."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 219
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 220
    const/4 v2, 0x0

    goto :goto_1

    .line 222
    :catch_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v2, v0, LHo;->b:Landroid/content/Context;

    const-string v3, "Unable to generate image."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 223
    const/4 v2, 0x0

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 6

    .prologue
    .line 228
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 229
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 230
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 232
    const/4 v1, 0x0

    .line 233
    invoke-static {v2}, LHi;->a([B)Ljava/io/File;

    move-result-object v3

    .line 235
    if-eqz v3, :cond_0

    .line 237
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 239
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    if-eqz v0, :cond_0

    .line 248
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    :cond_0
    :goto_0
    iget-object v0, p0, LHo;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    return-object v3

    .line 250
    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unable to write log to file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 248
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 250
    :catch_2
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unable to write log to file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :catch_3
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_0

    .line 248
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 250
    :catch_4
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unable to write log to file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 248
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 251
    :cond_1
    :goto_4
    throw v0

    .line 250
    :catch_5
    move-exception v1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unable to write log to file."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 245
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

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 80
    :try_start_0
    iget-object v0, p0, LHo;->c:Lcom/yik/yak/data/models/Yak;

    invoke-direct {p0, v0}, LHo;->a(Lcom/yik/yak/data/models/Yak;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, LHo;->b:Landroid/content/Context;

    const-string v1, "Unable to generate image."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    :goto_0
    return-object v7

    .line 86
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-static {}, LHa;->a()LHa;

    move-result-object v2

    iget-object v3, p0, LHo;->c:Lcom/yik/yak/data/models/Yak;

    iget v3, v3, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, LHo;->c:Lcom/yik/yak/data/models/Yak;

    iget v4, v4, Lcom/yik/yak/data/models/Yak;->Type:I

    iget-object v5, p0, LHo;->c:Lcom/yik/yak/data/models/Yak;

    iget-boolean v5, v5, Lcom/yik/yak/data/models/Yak;->IsBasecamp:Z

    invoke-virtual {v2, v1, v3, v4, v5}, LHa;->a(Ljava/lang/String;Ljava/lang/Long;IZ)V

    .line 92
    iget-object v1, p0, LHo;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, LHo;->a(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, LHt;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    iget-object v0, p0, LHo;->b:Landroid/content/Context;

    const-string v1, "Unable to generate image."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    iget-object v0, p0, LHo;->b:Landroid/content/Context;

    const-string v1, "Unable to generate image."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, LHo;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 109
    iget-object v0, p0, LHo;->e:Lcom/yik/yak/ui/activity/FamousActivity;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, LHo;->e:Lcom/yik/yak/ui/activity/FamousActivity;

    iget-object v1, p0, LHo;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/FamousActivity;->a(Landroid/graphics/Bitmap;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LHo;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, LHo;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, LHo;->b:Landroid/content/Context;

    const-string v1, "Creating Image"

    const-string v2, "Image is currently being created"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, LHo;->a:Landroid/app/ProgressDialog;

    .line 75
    return-void
.end method
