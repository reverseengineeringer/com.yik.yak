.class public LJl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:LJv;

.field public final k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;LJv;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "LJv;",
            "Ljava/util/Collection",
            "<",
            "LHc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, LJl;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, LJl;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, LJl;->c:Ljava/lang/String;

    .line 34
    iput-object p4, p0, LJl;->d:Ljava/lang/String;

    .line 36
    iput-object p5, p0, LJl;->e:Ljava/lang/String;

    .line 37
    iput-object p6, p0, LJl;->f:Ljava/lang/String;

    .line 38
    iput p7, p0, LJl;->g:I

    .line 39
    iput-object p8, p0, LJl;->h:Ljava/lang/String;

    .line 40
    iput-object p9, p0, LJl;->i:Ljava/lang/String;

    .line 41
    iput-object p10, p0, LJl;->j:LJv;

    .line 42
    iput-object p11, p0, LJl;->k:Ljava/util/Collection;

    .line 43
    return-void
.end method
