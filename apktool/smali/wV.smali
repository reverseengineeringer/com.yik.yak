.class public final LwV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LwV;

.field public static final b:LwV;


# instance fields
.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, LwX;

    invoke-direct {v0}, LwX;-><init>()V

    invoke-virtual {v0}, LwX;->a()LwX;

    move-result-object v0

    invoke-virtual {v0}, LwX;->c()LwV;

    move-result-object v0

    sput-object v0, LwV;->a:LwV;

    .line 28
    new-instance v0, LwX;

    invoke-direct {v0}, LwX;-><init>()V

    .line 29
    invoke-virtual {v0}, LwX;->b()LwX;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-virtual {v0, v1, v2}, LwX;->a(ILjava/util/concurrent/TimeUnit;)LwX;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, LwX;->c()LwV;

    move-result-object v0

    sput-object v0, LwV;->b:LwV;

    .line 28
    return-void
.end method

.method private constructor <init>(LwX;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-boolean v0, p1, LwX;->a:Z

    iput-boolean v0, p0, LwV;->c:Z

    .line 61
    iget-boolean v0, p1, LwX;->b:Z

    iput-boolean v0, p0, LwV;->d:Z

    .line 62
    iget v0, p1, LwX;->c:I

    iput v0, p0, LwV;->e:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, LwV;->f:I

    .line 64
    iput-boolean v1, p0, LwV;->g:Z

    .line 65
    iput-boolean v1, p0, LwV;->h:Z

    .line 66
    iget v0, p1, LwX;->d:I

    iput v0, p0, LwV;->i:I

    .line 67
    iget v0, p1, LwX;->e:I

    iput v0, p0, LwV;->j:I

    .line 68
    iget-boolean v0, p1, LwX;->f:Z

    iput-boolean v0, p0, LwV;->k:Z

    .line 69
    iget-boolean v0, p1, LwX;->g:Z

    iput-boolean v0, p0, LwV;->l:Z

    .line 70
    return-void
.end method

.method synthetic constructor <init>(LwX;LwW;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, LwV;-><init>(LwX;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZIIZZ)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, LwV;->c:Z

    .line 48
    iput-boolean p2, p0, LwV;->d:Z

    .line 49
    iput p3, p0, LwV;->e:I

    .line 50
    iput p4, p0, LwV;->f:I

    .line 51
    iput-boolean p5, p0, LwV;->g:Z

    .line 52
    iput-boolean p6, p0, LwV;->h:Z

    .line 53
    iput p7, p0, LwV;->i:I

    .line 54
    iput p8, p0, LwV;->j:I

    .line 55
    iput-boolean p9, p0, LwV;->k:Z

    .line 56
    iput-boolean p10, p0, LwV;->l:Z

    .line 57
    return-void
.end method

.method public static a(Lxs;)LwV;
    .locals 20

    .prologue
    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, -0x1

    .line 145
    const/4 v6, -0x1

    .line 146
    const/4 v7, 0x0

    .line 147
    const/4 v8, 0x0

    .line 148
    const/4 v9, -0x1

    .line 149
    const/4 v10, -0x1

    .line 150
    const/4 v11, 0x0

    .line 151
    const/4 v12, 0x0

    .line 153
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lxs;->a()I

    move-result v15

    move v14, v2

    :goto_0
    if-ge v14, v15, :cond_f

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lxs;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "Cache-Control"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lxs;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "Pragma"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    :cond_0
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 159
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lxs;->b(I)Ljava/lang/String;

    move-result-object v16

    .line 160
    const/4 v2, 0x0

    .line 161
    :cond_2
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 163
    const-string v13, "=,;"

    move-object/from16 v0, v16

    invoke-static {v0, v2, v13}, Lyq;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v13

    .line 164
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 167
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v13, v2, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v18, 0x2c

    move/from16 v0, v18

    if-eq v2, v0, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v18, 0x3b

    move/from16 v0, v18

    if-ne v2, v0, :cond_4

    .line 168
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 169
    const/4 v2, 0x0

    move-object/from16 v19, v2

    move v2, v13

    move-object/from16 v13, v19

    .line 190
    :goto_2
    const-string v18, "no-cache"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 191
    const/4 v3, 0x1

    goto :goto_1

    .line 171
    :cond_4
    add-int/lit8 v2, v13, 0x1

    .line 172
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lyq;->a(Ljava/lang/String;I)I

    move-result v2

    .line 175
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v2, v13, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v13, v0, :cond_5

    .line 176
    add-int/lit8 v2, v2, 0x1

    .line 178
    const-string v13, "\""

    move-object/from16 v0, v16

    invoke-static {v0, v2, v13}, Lyq;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v13

    .line 179
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 180
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v19, v2

    move v2, v13

    move-object/from16 v13, v19

    .line 183
    goto :goto_2

    .line 185
    :cond_5
    const-string v13, ",;"

    move-object/from16 v0, v16

    invoke-static {v0, v2, v13}, Lyq;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v13

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    move v2, v13

    move-object/from16 v13, v19

    goto :goto_2

    .line 192
    :cond_6
    const-string v18, "no-store"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 193
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 194
    :cond_7
    const-string v18, "max-age"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 195
    const/4 v5, -0x1

    invoke-static {v13, v5}, Lyq;->b(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_1

    .line 196
    :cond_8
    const-string v18, "s-maxage"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 197
    const/4 v6, -0x1

    invoke-static {v13, v6}, Lyq;->b(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_1

    .line 198
    :cond_9
    const-string v18, "public"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 199
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 200
    :cond_a
    const-string v18, "must-revalidate"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 201
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 202
    :cond_b
    const-string v18, "max-stale"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 203
    const v9, 0x7fffffff

    invoke-static {v13, v9}, Lyq;->b(Ljava/lang/String;I)I

    move-result v9

    goto/16 :goto_1

    .line 204
    :cond_c
    const-string v18, "min-fresh"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 205
    const/4 v10, -0x1

    invoke-static {v13, v10}, Lyq;->b(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_1

    .line 206
    :cond_d
    const-string v13, "only-if-cached"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 207
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 208
    :cond_e
    const-string v13, "no-transform"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 209
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 214
    :cond_f
    new-instance v2, LwV;

    invoke-direct/range {v2 .. v12}, LwV;-><init>(ZZIIZZIIZZ)V

    return-object v2
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, LwV;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, LwV;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, LwV;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, LwV;->f:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, LwV;->g:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, LwV;->h:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, LwV;->i:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, LwV;->j:I

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, LwV;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    iget-boolean v1, p0, LwV;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    iget-boolean v1, p0, LwV;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_1
    iget v1, p0, LwV;->e:I

    if-eq v1, v3, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LwV;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    iget v1, p0, LwV;->f:I

    if-eq v1, v3, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LwV;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_3
    iget-boolean v1, p0, LwV;->g:Z

    if-eqz v1, :cond_4

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_4
    iget-boolean v1, p0, LwV;->h:Z

    if-eqz v1, :cond_5

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_5
    iget v1, p0, LwV;->i:I

    if-eq v1, v3, :cond_6

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LwV;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_6
    iget v1, p0, LwV;->j:I

    if-eq v1, v3, :cond_7

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LwV;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_7
    iget-boolean v1, p0, LwV;->k:Z

    if-eqz v1, :cond_8

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_8
    iget-boolean v1, p0, LwV;->l:Z

    if-eqz v1, :cond_9

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a

    const-string v0, ""

    .line 232
    :goto_0
    return-object v0

    .line 231
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
