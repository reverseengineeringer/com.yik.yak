.class public LKm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJU;

.field public final b:LKf;

.field public final c:LKe;

.field public final d:LKc;

.field public final e:LJR;

.field public final f:LJV;

.field public final g:J

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(JLJU;LKf;LKe;LKc;LJR;LJV;II)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, LKm;->g:J

    .line 24
    iput-object p3, p0, LKm;->a:LJU;

    .line 25
    iput-object p4, p0, LKm;->b:LKf;

    .line 26
    iput-object p5, p0, LKm;->c:LKe;

    .line 27
    iput-object p6, p0, LKm;->d:LKc;

    .line 28
    iput p9, p0, LKm;->h:I

    .line 29
    iput p10, p0, LKm;->i:I

    .line 30
    iput-object p7, p0, LKm;->e:LJR;

    .line 31
    iput-object p8, p0, LKm;->f:LJV;

    .line 32
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 3

    .prologue
    .line 35
    iget-wide v0, p0, LKm;->g:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
