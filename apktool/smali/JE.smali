.class public LJE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJm;

.field public final b:LJx;

.field public final c:LJw;

.field public final d:LJu;

.field public final e:LJj;

.field public final f:LJn;

.field public final g:J

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(JLJm;LJx;LJw;LJu;LJj;LJn;II)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, LJE;->g:J

    .line 24
    iput-object p3, p0, LJE;->a:LJm;

    .line 25
    iput-object p4, p0, LJE;->b:LJx;

    .line 26
    iput-object p5, p0, LJE;->c:LJw;

    .line 27
    iput-object p6, p0, LJE;->d:LJu;

    .line 28
    iput p9, p0, LJE;->h:I

    .line 29
    iput p10, p0, LJE;->i:I

    .line 30
    iput-object p7, p0, LJE;->e:LJj;

    .line 31
    iput-object p8, p0, LJE;->f:LJn;

    .line 32
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 3

    .prologue
    .line 35
    iget-wide v0, p0, LJE;->g:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
