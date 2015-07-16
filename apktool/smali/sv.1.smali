.class public Lsv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/Intent;


# direct methods
.method private constructor <init>(ILjava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lsv;->a:I

    .line 111
    iput-object p2, p0, Lsv;->b:Ljava/lang/CharSequence;

    .line 112
    iput-object p3, p0, Lsv;->c:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lsv;->d:Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Lst;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lsv;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
